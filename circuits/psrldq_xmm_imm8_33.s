  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm1, %xmm1, %xmm9  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  mulsd %xmm1, %xmm9               #  2     0x4   5      OPC=mulsd_xmm_xmm            
  movupd %xmm9, %xmm1              #  3     0x9   5      OPC=movupd_xmm_xmm           
  xorps %xmm9, %xmm1               #  4     0xe   4      OPC=xorps_xmm_xmm            
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
