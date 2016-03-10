  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movzbq %bl, %rbp         #  1     0     4      OPC=movzbq_r64_r8   
  movzbl %ah, %edi         #  2     0x4   3      OPC=movzbl_r32_rh   
  movb %bl, %ah            #  3     0x7   2      OPC=movb_rh_r8      
  addw %di, %bp            #  4     0x9   3      OPC=addw_r16_r16    
  callq .read_zf_into_rbx  #  5     0xc   5      OPC=callq_label     
  movsbw %ah, %cx          #  6     0x11  4      OPC=movsbw_r16_rh   
  cmoveq %rbp, %rax        #  7     0x15  4      OPC=cmoveq_r64_r64  
  setnp %bl                #  8     0x19  3      OPC=setnp_r8        
  xchgl %ebp, %ebx         #  9     0x1c  2      OPC=xchgl_r32_r32   
  adcb %dil, %cl           #  10    0x1e  3      OPC=adcb_r8_r8      
  retq                     #  11    0x21  1      OPC=retq            
                                                                     
.size target, .-target
