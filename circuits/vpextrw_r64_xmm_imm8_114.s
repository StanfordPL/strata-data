  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13       #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label        
  vmovmskpd %xmm13, %rax                    #  3     0xa   5      OPC=vmovmskpd_r64_xmm  
  xaddw %ax, %dx                            #  4     0xf   4      OPC=xaddw_r16_r16      
  movq %rax, %rbx                           #  5     0x13  3      OPC=movq_r64_r64       
  retq                                      #  6     0x16  1      OPC=retq               
                                                                                         
.size target, .-target
