  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmulsd %xmm2, %xmm1, %xmm8  #  1     0    4      OPC=vmulsd_xmm_xmm_xmm  
  pxor %xmm1, %xmm1           #  2     0x4  4      OPC=pxor_xmm_xmm        
  addsd %xmm8, %xmm1          #  3     0x8  5      OPC=addsd_xmm_xmm       
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
