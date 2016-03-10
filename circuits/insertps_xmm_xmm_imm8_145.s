  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vxorps %xmm15, %xmm15, %xmm12     #  1     0     5      OPC=vxorps_xmm_xmm_xmm        
  vfnmsub132ss %xmm1, %xmm1, %xmm2  #  2     0x5   5      OPC=vfnmsub132ss_xmm_xmm_xmm  
  vpunpckhdq %xmm2, %xmm12, %xmm15  #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm    
  movapd %xmm15, %xmm7              #  4     0xe   5      OPC=movapd_xmm_xmm            
  movsd %xmm7, %xmm1                #  5     0x13  4      OPC=movsd_xmm_xmm             
  retq                              #  6     0x17  1      OPC=retq                      
                                                                                        
.size target, .-target
