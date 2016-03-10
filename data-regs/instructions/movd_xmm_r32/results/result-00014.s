  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                 
.target:                        #        0    0      OPC=<label>            
  vmovd %ebx, %xmm10            #  1     0    4      OPC=vmovd_xmm_r32      
  vpand %xmm10, %xmm10, %xmm15  #  2     0x4  5      OPC=vpand_xmm_xmm_xmm  
  movupd %xmm15, %xmm1          #  3     0x9  5      OPC=movupd_xmm_xmm     
  retq                          #  4     0xe  1      OPC=retq               
                                                                            
.size target, .-target
