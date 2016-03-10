  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                 
.target:                        #        0     0      OPC=<label>            
  vpxor %xmm11, %xmm11, %xmm15  #  1     0     5      OPC=vpxor_xmm_xmm_xmm  
  vpmovzxbd %xmm15, %xmm10      #  2     0x5   5      OPC=vpmovzxbd_xmm_xmm  
  mulpd %xmm2, %xmm1            #  3     0xa   4      OPC=mulpd_xmm_xmm      
  addsubpd %xmm10, %xmm1        #  4     0xe   5      OPC=addsubpd_xmm_xmm   
  cvtss2sd %xmm2, %xmm1         #  5     0x13  4      OPC=cvtss2sd_xmm_xmm   
  movhlps %xmm10, %xmm1         #  6     0x17  4      OPC=movhlps_xmm_xmm    
  retq                          #  7     0x1b  1      OPC=retq               
                                                                             
.size target, .-target
