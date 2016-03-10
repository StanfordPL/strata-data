  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label             
  xaddl %eax, %ebx                          #  2     0x5   3      OPC=xaddl_r32_r32           
  vmovq %rax, %xmm0                         #  3     0x8   5      OPC=vmovq_xmm_r64           
  vbroadcastss %xmm0, %ymm4                 #  4     0xd   5      OPC=vbroadcastss_ymm_xmm    
  vpunpckhdq %xmm2, %xmm4, %xmm11           #  5     0x12  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm11, %xmm1               #  6     0x16  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                                      #  7     0x1a  1      OPC=retq                    
                                                                                              
.size target, .-target
