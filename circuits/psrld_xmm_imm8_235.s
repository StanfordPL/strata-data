  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vpxor %xmm2, %xmm2, %xmm14    #  1     0     4      OPC=vpxor_xmm_xmm_xmm    
  vandnpd %xmm1, %xmm1, %xmm11  #  2     0x4   4      OPC=vandnpd_xmm_xmm_xmm  
  vpmovzxbd %xmm14, %ymm2       #  3     0x8   5      OPC=vpmovzxbd_ymm_xmm    
  movshdup %xmm11, %xmm1        #  4     0xd   5      OPC=movshdup_xmm_xmm     
  addsd %xmm2, %xmm1            #  5     0x12  4      OPC=addsd_xmm_xmm        
  retq                          #  6     0x16  1      OPC=retq                 
                                                                               
.size target, .-target
