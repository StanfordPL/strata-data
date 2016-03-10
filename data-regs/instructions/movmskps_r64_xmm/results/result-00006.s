  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  callq .move_byte_13_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label        
  vmovmskps %xmm1, %rax               #  2     0x5   4      OPC=vmovmskps_r64_xmm  
  testb %al, %r9b                     #  3     0x9   3      OPC=testb_r8_r8        
  callq .read_sf_into_rbx             #  4     0xc   5      OPC=callq_label        
  xorq %rax, %rbx                     #  5     0x11  3      OPC=xorq_r64_r64       
  retq                                #  6     0x14  1      OPC=retq               
                                                                                   
.size target, .-target
