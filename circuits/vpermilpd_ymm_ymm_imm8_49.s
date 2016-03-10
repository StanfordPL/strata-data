  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vcvtdq2ps %xmm13, %xmm11              #  2     0x5   5      OPC=vcvtdq2ps_xmm_xmm     
  vbroadcastsd %xmm13, %ymm1            #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm  
  vmovlhps %xmm2, %xmm12, %xmm13        #  4     0xf   4      OPC=vmovlhps_xmm_xmm_xmm  
  punpckhqdq %xmm11, %xmm12             #  5     0x13  5      OPC=punpckhqdq_xmm_xmm    
  callq .move_64_128_xmm12_xmm13_xmm1   #  6     0x18  5      OPC=callq_label           
  retq                                  #  7     0x1d  1      OPC=retq                  
                                                                                        
.size target, .-target
