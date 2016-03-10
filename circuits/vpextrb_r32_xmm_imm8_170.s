  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vmovaps %xmm1, %xmm6               #  1     0     4      OPC=vmovaps_xmm_xmm           
  vunpckhpd %ymm6, %ymm6, %ymm3      #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm     
  vfnmadd231pd %xmm3, %xmm6, %xmm1   #  3     0x8   5      OPC=vfnmadd231pd_xmm_xmm_xmm  
  movq $0x4, %rbx                    #  4     0xd   10     OPC=movq_r64_imm64            
  vmovhlps %xmm6, %xmm1, %xmm1       #  5     0x17  4      OPC=vmovhlps_xmm_xmm_xmm      
  callq .move_byte_2_of_ymm1_to_r9b  #  6     0x1b  5      OPC=callq_label               
  xchgb %r9b, %bl                    #  7     0x20  3      OPC=xchgb_r8_r8               
  retq                               #  8     0x23  1      OPC=retq                      
                                                                                         
.size target, .-target
