  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  addsubpd %xmm10, %xmm10                         #  2     0x5   5      OPC=addsubpd_xmm_xmm       
  vpmovsxbd %xmm9, %xmm1                          #  3     0xa   5      OPC=vpmovsxbd_xmm_xmm      
  vunpcklpd %xmm8, %xmm8, %xmm12                  #  4     0xf   5      OPC=vunpcklpd_xmm_xmm_xmm  
  vsubps %xmm10, %xmm1, %xmm9                     #  5     0x14  5      OPC=vsubps_xmm_xmm_xmm     
  vpmovsxbd %xmm12, %xmm8                         #  6     0x19  5      OPC=vpmovsxbd_xmm_xmm      
  callq .move_128_256_xmm8_xmm9_ymm1              #  7     0x1e  5      OPC=callq_label            
  retq                                            #  8     0x23  1      OPC=retq                   
                                                                                                   
.size target, .-target
