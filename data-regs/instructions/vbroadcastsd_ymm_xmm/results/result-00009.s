  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovq %xmm2, %r8                    #  1     0     5      OPC=vmovq_r64_xmm       
  vzeroall                            #  2     0x5   3      OPC=vzeroall            
  vmovq %r8, %xmm9                    #  3     0x8   5      OPC=vmovq_xmm_r64       
  movddup %xmm9, %xmm9                #  4     0xd   5      OPC=movddup_xmm_xmm     
  vxorps %xmm9, %xmm7, %xmm8          #  5     0x12  5      OPC=vxorps_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  6     0x17  5      OPC=callq_label         
  retq                                #  7     0x1c  1      OPC=retq                
                                                                                    
.size target, .-target
