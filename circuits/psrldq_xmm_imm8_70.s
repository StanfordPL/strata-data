  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vxorps %xmm10, %xmm10, %xmm2  #  1     0     5      OPC=vxorps_xmm_xmm_xmm  
  movddup %xmm2, %xmm4          #  2     0x5   4      OPC=movddup_xmm_xmm     
  hsubpd %xmm4, %xmm1           #  3     0x9   4      OPC=hsubpd_xmm_xmm      
  movsd %xmm4, %xmm1            #  4     0xd   4      OPC=movsd_xmm_xmm       
  retq                          #  5     0x11  1      OPC=retq                
                                                                              
.size target, .-target
