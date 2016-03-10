  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmaxpd %ymm1, %ymm1, %ymm3  #  1     0    4      OPC=vmaxpd_ymm_ymm_ymm  
  vmovmskpd %ymm3, %rbx       #  2     0x4  4      OPC=vmovmskpd_r64_ymm   
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
