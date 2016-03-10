  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  pxor %xmm5, %xmm5                   #  1     0     4      OPC=pxor_xmm_xmm          
  vmovlhps %xmm5, %xmm5, %xmm8        #  2     0x4   4      OPC=vmovlhps_xmm_xmm_xmm  
  vminpd %xmm3, %xmm3, %xmm9          #  3     0x8   4      OPC=vminpd_xmm_xmm_xmm    
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xc   5      OPC=callq_label           
  retq                                #  5     0x11  1      OPC=retq                  
                                                                                      
.size target, .-target
