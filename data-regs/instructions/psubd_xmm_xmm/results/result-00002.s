  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpsubd %xmm2, %xmm1, %xmm6  #  1     0    4      OPC=vpsubd_xmm_xmm_xmm  
  vmovups %xmm6, %xmm14       #  2     0x4  4      OPC=vmovups_xmm_xmm     
  movapd %xmm14, %xmm1        #  3     0x8  5      OPC=movapd_xmm_xmm      
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
