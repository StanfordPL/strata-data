  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r12_r13      #  1     0     5      OPC=callq_label              
  vzeroall                              #  2     0x5   3      OPC=vzeroall                 
  xchgq %r13, %r12                      #  3     0x8   3      OPC=xchgq_r64_r64            
  callq .move_064_128_r12_r13_xmm2      #  4     0xb   5      OPC=callq_label              
  vpbroadcastq %xmm2, %ymm10            #  5     0x10  5      OPC=vpbroadcastq_ymm_xmm     
  vpunpckhqdq %ymm10, %ymm2, %ymm13     #  6     0x15  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  7     0x1a  5      OPC=callq_label              
  retq                                  #  8     0x1f  1      OPC=retq                     
                                                                                           
.size target, .-target
