  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode           
.target:                                #        0     0      OPC=<label>      
  callq .move_128_64_xmm1_xmm12_xmm13   #  1     0     5      OPC=callq_label  
  callq .move_128_256_xmm12_xmm13_ymm2  #  2     0x5   5      OPC=callq_label  
  callq .move_128_064_xmm2_r8_r9        #  3     0xa   5      OPC=callq_label  
  callq .move_032_064_r8d_r9d_rbx       #  4     0xf   5      OPC=callq_label  
  retq                                  #  5     0x14  1      OPC=retq         
                                                                               
.size target, .-target
