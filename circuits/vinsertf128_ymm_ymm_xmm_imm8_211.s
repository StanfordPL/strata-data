  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vpor %xmm3, %xmm3, %xmm13             #  1     0     4      OPC=vpor_xmm_xmm_xmm    
  vdivsd %xmm2, %xmm13, %xmm12          #  2     0x4   4      OPC=vdivsd_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0x8   5      OPC=callq_label         
  movups %xmm2, %xmm1                   #  4     0xd   3      OPC=movups_xmm_xmm      
  retq                                  #  5     0x10  1      OPC=retq                
                                                                                      
.size target, .-target
