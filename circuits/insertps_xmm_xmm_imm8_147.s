  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  vxorps %xmm7, %xmm7, %xmm7      #  1     0     4      OPC=vxorps_xmm_xmm_xmm    
  vhsubps %xmm7, %xmm2, %xmm11    #  2     0x4   4      OPC=vhsubps_xmm_xmm_xmm   
  vmovhlps %xmm11, %xmm7, %xmm10  #  3     0x8   5      OPC=vmovhlps_xmm_xmm_xmm  
  cvtss2sd %xmm10, %xmm1          #  4     0xd   5      OPC=cvtss2sd_xmm_xmm      
  retq                            #  5     0x12  1      OPC=retq                  
                                                                                  
.size target, .-target
