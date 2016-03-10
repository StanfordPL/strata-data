  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vcvtps2pd %xmm1, %ymm9      #  1     0     4      OPC=vcvtps2pd_ymm_xmm   
  movaps %xmm9, %xmm1         #  2     0x4   4      OPC=movaps_xmm_xmm      
  vmaxpd %xmm9, %xmm1, %xmm4  #  3     0x8   5      OPC=vmaxpd_xmm_xmm_xmm  
  xorps %xmm4, %xmm1          #  4     0xd   3      OPC=xorps_xmm_xmm       
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
