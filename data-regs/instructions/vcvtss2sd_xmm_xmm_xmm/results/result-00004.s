  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r10_r11          #  1     0     5      OPC=callq_label       
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label       
  movq $0xffffffffffffffff, %r10            #  3     0xa   10     OPC=movq_r64_imm64    
  vzeroall                                  #  4     0x14  3      OPC=vzeroall          
  xaddl %r10d, %eax                         #  5     0x17  4      OPC=xaddl_r32_r32     
  callq .move_064_128_r10_r11_xmm1          #  6     0x1b  5      OPC=callq_label       
  cvtss2sd %xmm1, %xmm1                     #  7     0x20  4      OPC=cvtss2sd_xmm_xmm  
  retq                                      #  8     0x24  1      OPC=retq              
                                                                                        
.size target, .-target
