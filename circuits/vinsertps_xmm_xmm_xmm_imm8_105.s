  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpsubd %xmm8, %xmm2, %xmm9                      #  2     0x5   5      OPC=vpsubd_xmm_xmm_xmm     
  vunpcklps %xmm10, %xmm3, %xmm1                  #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm9, %xmm1                              #  4     0xf   5      OPC=movsd_xmm_xmm          
  retq                                            #  5     0x14  1      OPC=retq                   
                                                                                                   
.size target, .-target
