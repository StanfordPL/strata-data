  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x2, %rax          #  1     0     10     OPC=movq_r64_imm64  
  callq .read_cf_into_rcx  #  2     0xa   5      OPC=callq_label     
  addw %ax, %cx            #  3     0xf   3      OPC=addw_r16_r16    
  setnp %ch                #  4     0x12  3      OPC=setnp_rh        
  xchgl %ecx, %eax         #  5     0x15  2      OPC=xchgl_r32_r32   
  retq                     #  6     0x17  1      OPC=retq            
                                                                     
.size target, .-target
