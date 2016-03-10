  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  movdqu %xmm3, %xmm1                   #  1     0     4      OPC=movdqu_xmm_xmm      
  movaps %xmm1, %xmm14                  #  2     0x4   4      OPC=movaps_xmm_xmm      
  vmovdqu %ymm2, %ymm1                  #  3     0x8   4      OPC=vmovdqu_ymm_ymm     
  movups %xmm1, %xmm10                  #  4     0xc   4      OPC=movups_xmm_xmm      
  vminsd %xmm14, %xmm3, %xmm11          #  5     0x10  5      OPC=vminsd_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x15  5      OPC=callq_label         
  retq                                  #  7     0x1a  1      OPC=retq                
                                                                                      
.size target, .-target
