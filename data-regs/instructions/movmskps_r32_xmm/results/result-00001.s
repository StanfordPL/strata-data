  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  2     0x5   5      OPC=callq_label        
  vmovmskps %xmm3, %rbx                         #  3     0xa   4      OPC=vmovmskps_r64_xmm  
  orb %bh, %bl                                  #  4     0xe   2      OPC=orb_r8_rh          
  retq                                          #  5     0x10  1      OPC=retq               
                                                                                             
.size target, .-target
