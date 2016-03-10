  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovsd %xmm1, %xmm1, %xmm3  #  1     0    4      OPC=vmovsd_xmm_xmm_xmm  
  movaps %xmm3, %xmm10        #  2     0x4  4      OPC=movaps_xmm_xmm      
  andnpd %xmm10, %xmm1        #  3     0x8  5      OPC=andnpd_xmm_xmm      
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
