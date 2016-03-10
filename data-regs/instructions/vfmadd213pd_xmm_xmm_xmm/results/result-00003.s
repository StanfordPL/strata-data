  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovups %xmm2, %xmm7              #  1     0     4      OPC=vmovups_xmm_xmm          
  movups %xmm1, %xmm12              #  2     0x4   4      OPC=movups_xmm_xmm           
  vmovupd %xmm3, %xmm1              #  3     0x8   4      OPC=vmovupd_xmm_xmm          
  vfmadd231pd %xmm12, %xmm7, %xmm1  #  4     0xc   5      OPC=vfmadd231pd_xmm_xmm_xmm  
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
