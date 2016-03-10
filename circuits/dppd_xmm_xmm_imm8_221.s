  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vxorps %xmm15, %xmm15, %xmm9  #  1     0     5      OPC=vxorps_xmm_xmm_xmm  
  mulsd %xmm2, %xmm1            #  2     0x5   4      OPC=mulsd_xmm_xmm       
  punpcklqdq %xmm9, %xmm1       #  3     0x9   5      OPC=punpcklqdq_xmm_xmm  
  addpd %xmm9, %xmm1            #  4     0xe   5      OPC=addpd_xmm_xmm       
  retq                          #  5     0x13  1      OPC=retq                
                                                                              
.size target, .-target
