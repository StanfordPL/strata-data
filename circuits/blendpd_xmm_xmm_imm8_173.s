  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  maxpd %xmm1, %xmm1      #  1     0    4      OPC=maxpd_xmm_xmm     
  vmovddup %xmm2, %xmm14  #  2     0x4  4      OPC=vmovddup_xmm_xmm  
  movsd %xmm14, %xmm1     #  3     0x8  5      OPC=movsd_xmm_xmm     
  retq                    #  4     0xd  1      OPC=retq              
                                                                     
.size target, .-target
