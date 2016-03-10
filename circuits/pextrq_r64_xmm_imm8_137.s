  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vcvtdq2pd %xmm1, %xmm7        #  1     0    4      OPC=vcvtdq2pd_xmm_xmm     
  vmovhlps %xmm1, %xmm7, %xmm1  #  2     0x4  4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovq %xmm1, %rbx             #  3     0x8  5      OPC=vmovq_r64_xmm         
  xchgb %bl, %bl                #  4     0xd  2      OPC=xchgb_r8_r8           
  retq                          #  5     0xf  1      OPC=retq                  
                                                                               
.size target, .-target
