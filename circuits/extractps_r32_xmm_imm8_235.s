  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  movq $0x0, %rbx                           #  1     0     10     OPC=movq_r64_imm64   
  popcntq %rbx, %rbx                        #  2     0xa   5      OPC=popcntq_r64_r64  
  setnbe %bl                                #  3     0xf   3      OPC=setnbe_r8        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0x12  5      OPC=callq_label      
  cmovnsl %r9d, %ebx                        #  5     0x17  4      OPC=cmovnsl_r32_r32  
  retq                                      #  6     0x1b  1      OPC=retq             
                                                                                       
.size target, .-target
