  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  movd %ebx, %xmm4                     #  1     0     4      OPC=movd_xmm_r32          
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label           
  vbroadcastss %xmm4, %xmm1            #  3     0x9   5      OPC=vbroadcastss_xmm_xmm  
  punpckldq %xmm11, %xmm1              #  4     0xe   5      OPC=punpckldq_xmm_xmm     
  vmovsd %xmm2, %xmm1, %xmm1           #  5     0x13  4      OPC=vmovsd_xmm_xmm_xmm    
  retq                                 #  6     0x17  1      OPC=retq                  
                                                                                       
.size target, .-target
