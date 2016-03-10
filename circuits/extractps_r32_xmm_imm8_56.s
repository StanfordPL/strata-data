  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vminps %xmm1, %xmm1, %xmm6                #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label         
  vmovd %xmm6, %r13d                        #  3     0x9   5      OPC=vmovd_r32_xmm       
  movq $0xffffffffffffffe0, %rbx            #  4     0xe   10     OPC=movq_r64_imm64      
  subl %r13d, %ebx                          #  5     0x18  3      OPC=subl_r32_r32        
  xaddl %ebx, %eax                          #  6     0x1b  3      OPC=xaddl_r32_r32       
  retq                                      #  7     0x1e  1      OPC=retq                
                                                                                          
.size target, .-target
