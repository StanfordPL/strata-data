  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode                  
.target:                   #        0     0      OPC=<label>             
  vmovd %ebx, %xmm12       #  1     0     4      OPC=vmovd_xmm_r32       
  vcvtdq2pd %ymm12, %ymm9  #  2     0x4   5      OPC=vcvtdq2pd_ymm_ymm   
  punpcklqdq %xmm9, %xmm9  #  3     0x9   5      OPC=punpcklqdq_xmm_xmm  
  cvtsd2ss %xmm9, %xmm1    #  4     0xe   5      OPC=cvtsd2ss_xmm_xmm    
  retq                     #  5     0x13  1      OPC=retq                
                                                                         
.size target, .-target
