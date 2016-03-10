  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  unpckhpd %xmm3, %xmm2       #  1     0    4      OPC=unpckhpd_xmm_xmm    
  vmaxsd %xmm2, %xmm2, %xmm3  #  2     0x4  4      OPC=vmaxsd_xmm_xmm_xmm  
  vmovupd %xmm3, %xmm1        #  3     0x8  4      OPC=vmovupd_xmm_xmm     
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
