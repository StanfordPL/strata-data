  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  mulpd %xmm2, %xmm1          #  1     0     4      OPC=mulpd_xmm_xmm       
  vpsubd %xmm2, %xmm2, %xmm0  #  2     0x4   4      OPC=vpsubd_xmm_xmm_xmm  
  addsd %xmm0, %xmm1          #  3     0x8   4      OPC=addsd_xmm_xmm       
  movdqa %xmm1, %xmm12        #  4     0xc   5      OPC=movdqa_xmm_xmm      
  movddup %xmm12, %xmm1       #  5     0x11  5      OPC=movddup_xmm_xmm     
  retq                        #  6     0x16  1      OPC=retq                
                                                                            
.size target, .-target
