  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label         
  tzcntl %r11d, %eax                #  2     0x5   5      OPC=tzcntl_r32_r32      
  cmpxchgw %r11w, %bx               #  3     0xa   5      OPC=cmpxchgw_r16_r16    
  vzeroall                          #  4     0xf   3      OPC=vzeroall            
  xchgw %ax, %r11w                  #  5     0x12  4      OPC=xchgw_r16_r16       
  vminss %xmm9, %xmm0, %xmm1        #  6     0x16  5      OPC=vminss_xmm_xmm_xmm  
  callq .move_064_128_r10_r11_xmm1  #  7     0x1b  5      OPC=callq_label         
  retq                              #  8     0x20  1      OPC=retq                
                                                                                  
.size target, .-target
