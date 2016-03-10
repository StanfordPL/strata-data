  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastd %xmm1, %xmm15  #  1     0    5      OPC=vpbroadcastd_xmm_xmm  
  movd %xmm15, %edx           #  2     0x5  5      OPC=movd_r32_xmm          
  movzwl %dx, %ebx            #  3     0xa  3      OPC=movzwl_r32_r16        
  retq                        #  4     0xd  1      OPC=retq                  
                                                                             
.size target, .-target
