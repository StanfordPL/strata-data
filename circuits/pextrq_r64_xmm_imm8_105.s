  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vmaxps %xmm1, %xmm1, %xmm14     #  1     0    4      OPC=vmaxps_xmm_xmm_xmm     
  vunpckhpd %xmm1, %xmm14, %xmm4  #  2     0x4  4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovq %xmm4, %rbx               #  3     0x8  5      OPC=vmovq_r64_xmm          
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
