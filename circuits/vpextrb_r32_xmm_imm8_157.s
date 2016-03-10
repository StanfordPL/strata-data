  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm12   #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movq $0x0, %rbx                    #  2     0x4   10     OPC=movq_r64_imm64           
  vmovapd %xmm12, %xmm10             #  3     0xe   5      OPC=vmovapd_xmm_xmm          
  vmovddup %xmm12, %xmm7             #  4     0x13  5      OPC=vmovddup_xmm_xmm         
  vminps %xmm7, %xmm10, %xmm1        #  5     0x18  4      OPC=vminps_xmm_xmm_xmm       
  callq .move_byte_5_of_ymm1_to_r8b  #  6     0x1c  5      OPC=callq_label              
  movb %r8b, %bl                     #  7     0x21  3      OPC=movb_r8_r8               
  retq                               #  8     0x24  1      OPC=retq                     
                                                                                        
.size target, .-target
