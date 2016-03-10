  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vbroadcastsd %xmm3, %ymm7            #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm  
  vpbroadcastq %xmm7, %xmm5            #  3     0xa   5      OPC=vpbroadcastq_xmm_xmm  
  vminpd %xmm13, %xmm13, %xmm13        #  4     0xf   5      OPC=vminpd_xmm_xmm_xmm    
  vmovsd %xmm13, %xmm5, %xmm1          #  5     0x14  5      OPC=vmovsd_xmm_xmm_xmm    
  retq                                 #  6     0x19  1      OPC=retq                  
                                                                                       
.size target, .-target
