  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  vmovmskps %xmm1, %rbx              #  1     0     4      OPC=vmovmskps_r64_xmm  
  callq .move_064_032_rbx_r12d_r13d  #  2     0x4   5      OPC=callq_label        
  andl %r13d, %ebx                   #  3     0x9   3      OPC=andl_r32_r32       
  cmovbew %r12w, %bx                 #  4     0xc   5      OPC=cmovbew_r16_r16    
  retq                               #  5     0x11  1      OPC=retq               
                                                                                  
.size target, .-target
