  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  movaps %xmm9, %xmm0                             #  2     0x5   4      OPC=movaps_xmm_xmm           
  vpbroadcastw %xmm9, %ymm12                      #  3     0x9   5      OPC=vpbroadcastw_ymm_xmm     
  vmovhlps %xmm2, %xmm0, %xmm15                   #  4     0xe   4      OPC=vmovhlps_xmm_xmm_xmm     
  vpunpcklqdq %xmm15, %xmm12, %xmm1               #  5     0x12  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq                     
                                                                                                     
.size target, .-target
