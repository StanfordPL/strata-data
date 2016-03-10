  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  movdqu %xmm3, %xmm9                   #  1     0     5      OPC=movdqu_xmm_xmm      
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label         
  vmovaps %xmm13, %xmm8                 #  3     0xa   5      OPC=vmovaps_xmm_xmm     
  callq .move_128_256_xmm8_xmm9_ymm2    #  4     0xf   5      OPC=callq_label         
  vminpd %ymm2, %ymm2, %ymm1            #  5     0x14  4      OPC=vminpd_ymm_ymm_ymm  
  retq                                  #  6     0x18  1      OPC=retq                
                                                                                      
.size target, .-target
