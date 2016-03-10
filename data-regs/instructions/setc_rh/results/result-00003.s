  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x20, %rax         #  1     0     10     OPC=movq_r64_imm64  
  adcl %eax, %eax          #  2     0xa   2      OPC=adcl_r32_r32    
  callq .read_pf_into_rbx  #  3     0xc   5      OPC=callq_label     
  movb %bl, %ah            #  4     0x11  2      OPC=movb_rh_r8      
  retq                     #  5     0x13  1      OPC=retq            
                                                                     
.size target, .-target
