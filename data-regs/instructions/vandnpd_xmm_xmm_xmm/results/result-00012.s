  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  xorpd %xmm3, %xmm2          #  1     0    4      OPC=xorpd_xmm_xmm       
  vpand %xmm3, %xmm2, %xmm2   #  2     0x4  4      OPC=vpand_xmm_xmm_xmm   
  vandps %xmm2, %xmm2, %xmm1  #  3     0x8  4      OPC=vandps_xmm_xmm_xmm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
