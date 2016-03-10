  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vcvtss2sd %xmm1, %xmm2, %xmm10  #  1     0     4      OPC=vcvtss2sd_xmm_xmm_xmm  
  punpckhqdq %xmm10, %xmm2        #  2     0x4   5      OPC=punpckhqdq_xmm_xmm     
  vmovq %xmm2, %xmm4              #  3     0x9   4      OPC=vmovq_xmm_xmm          
  unpcklpd %xmm4, %xmm1           #  4     0xd   4      OPC=unpcklpd_xmm_xmm       
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
