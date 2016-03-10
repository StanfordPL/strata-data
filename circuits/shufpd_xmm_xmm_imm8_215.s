  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                  
.target:                         #        0     0      OPC=<label>             
  vmovups %xmm2, %xmm14          #  1     0     4      OPC=vmovups_xmm_xmm     
  vminpd %xmm14, %xmm14, %xmm11  #  2     0x4   5      OPC=vminpd_xmm_xmm_xmm  
  movupd %xmm11, %xmm4           #  3     0x9   5      OPC=movupd_xmm_xmm      
  movupd %xmm1, %xmm1            #  4     0xe   4      OPC=movupd_xmm_xmm      
  punpckhqdq %xmm4, %xmm1        #  5     0x12  4      OPC=punpckhqdq_xmm_xmm  
  retq                           #  6     0x16  1      OPC=retq                
                                                                               
.size target, .-target
