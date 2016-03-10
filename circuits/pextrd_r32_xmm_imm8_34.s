  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  movq %xmm1, %rbx                          #  2     0x5   5      OPC=movq_r64_xmm     
  xchgl %edx, %r8d                          #  3     0xa   3      OPC=xchgl_r32_r32    
  orb %r8b, %r8b                            #  4     0xd   3      OPC=orb_r8_r8        
  cmovnol %edx, %ebx                        #  5     0x10  3      OPC=cmovnol_r32_r32  
  retq                                      #  6     0x13  1      OPC=retq             
                                                                                       
.size target, .-target
