  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  vhaddps %xmm1, %xmm1, %xmm2                   #  1     0     4      OPC=vhaddps_xmm_xmm_xmm  
  vmovq %xmm2, %xmm6                            #  2     0x4   4      OPC=vmovq_xmm_xmm        
  movmskpd %xmm6, %rbx                          #  3     0x8   4      OPC=movmskpd_r64_xmm     
  xorw %bx, %bx                                 #  4     0xc   3      OPC=xorw_r16_r16         
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  5     0xf   5      OPC=callq_label          
  adcl %r11d, %ebx                              #  6     0x14  3      OPC=adcl_r32_r32         
  retq                                          #  7     0x17  1      OPC=retq                 
                                                                                               
.size target, .-target
