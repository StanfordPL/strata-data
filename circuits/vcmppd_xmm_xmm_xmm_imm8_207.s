  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  movq $0xfffffffffffffffe, %rdx  #  1     0     10     OPC=movq_r64_imm64        
  sarl $0x1, %edx                 #  2     0xa   2      OPC=sarl_r32_one          
  movq %rdx, %xmm6                #  3     0xc   5      OPC=movq_xmm_r64          
  vpbroadcastw %xmm6, %xmm1       #  4     0x11  5      OPC=vpbroadcastw_xmm_xmm  
  retq                            #  5     0x16  1      OPC=retq                  
                                                                                  
.size target, .-target
