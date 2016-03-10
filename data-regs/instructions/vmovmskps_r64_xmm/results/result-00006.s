  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vcvtps2pd %xmm1, %ymm4  #  1     0    4      OPC=vcvtps2pd_ymm_xmm  
  vmovmskpd %ymm4, %rbx   #  2     0x4  4      OPC=vmovmskpd_r64_ymm  
  xchgw %bx, %bx          #  3     0x8  3      OPC=xchgw_r16_r16      
  retq                    #  4     0xb  1      OPC=retq               
                                                                      
.size target, .-target
