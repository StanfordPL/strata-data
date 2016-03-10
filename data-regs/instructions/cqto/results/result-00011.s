  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  xorpd %xmm1, %xmm1              #  1     0     4      OPC=xorpd_xmm_xmm  
  salq $0x1, %rax                 #  2     0x4   3      OPC=salq_r64_one   
  callq .move_128_064_xmm1_r8_r9  #  3     0x7   5      OPC=callq_label    
  movl %r9d, %edx                 #  4     0xc   3      OPC=movl_r32_r32   
  setnb %dl                       #  5     0xf   3      OPC=setnb_r8       
  decq %rdx                       #  6     0x12  3      OPC=decq_r64       
  retq                            #  7     0x15  1      OPC=retq           
                                                                           
.size target, .-target
