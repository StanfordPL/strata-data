  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  rsqrtss %xmm1, %xmm1        #  1     0     4      OPC=rsqrtss_xmm_xmm     
  orps %xmm1, %xmm1           #  2     0x4   3      OPC=orps_xmm_xmm        
  vmaxpd %xmm1, %xmm1, %xmm9  #  3     0x7   4      OPC=vmaxpd_xmm_xmm_xmm  
  xorpd %xmm9, %xmm1          #  4     0xb   5      OPC=xorpd_xmm_xmm       
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
