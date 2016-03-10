  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovdqu %xmm2, %xmm6        #  1     0     4      OPC=vmovdqu_xmm_xmm     
  vminps %xmm2, %xmm6, %xmm2  #  2     0x4   4      OPC=vminps_xmm_xmm_xmm  
  divsd %xmm3, %xmm6          #  3     0x8   4      OPC=divsd_xmm_xmm       
  vmovsd %xmm6, %xmm2, %xmm1  #  4     0xc   4      OPC=vmovsd_xmm_xmm_xmm  
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
