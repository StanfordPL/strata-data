  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  divsd %xmm2, %xmm2       #  1     0    4      OPC=divsd_xmm_xmm       
  movhlps %xmm2, %xmm2     #  2     0x4  3      OPC=movhlps_xmm_xmm     
  punpcklqdq %xmm2, %xmm1  #  3     0x7  4      OPC=punpcklqdq_xmm_xmm  
  retq                     #  4     0xb  1      OPC=retq                
                                                                        
.size target, .-target
