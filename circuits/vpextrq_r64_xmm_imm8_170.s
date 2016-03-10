  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm14  #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  vmovdqa %ymm14, %ymm6       #  2     0x5   5      OPC=vmovdqa_ymm_ymm       
  movq %xmm6, %rbx            #  3     0xa   5      OPC=movq_r64_xmm          
  orb %bl, %bl                #  4     0xf   2      OPC=orb_r8_r8             
  retq                        #  5     0x11  1      OPC=retq                  
                                                                              
.size target, .-target
