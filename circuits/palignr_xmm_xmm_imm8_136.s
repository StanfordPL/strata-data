  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vaddss %xmm2, %xmm2, %xmm0  #  1     0     4      OPC=vaddss_xmm_xmm_xmm  
  minsd %xmm0, %xmm1          #  2     0x4   4      OPC=minsd_xmm_xmm       
  vmovups %xmm1, %xmm13       #  3     0x8   4      OPC=vmovups_xmm_xmm     
  xorpd %xmm13, %xmm1         #  4     0xc   5      OPC=xorpd_xmm_xmm       
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
